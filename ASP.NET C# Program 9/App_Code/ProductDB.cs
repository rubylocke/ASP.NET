using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.ComponentModel;

[DataObject(true)]
public static class ProductDB
{
    [DataObjectMethod(DataObjectMethodType.Select)]
    public static List<Product> GetProducts()
    {
        List<Product> productList = new List<Product>();
        string sql = "SELECT ProductID, Name, OnHand "
            + "FROM Products ORDER BY ProductID";
        using (SqlConnection con = new SqlConnection(GetConnectionString()))
        {
            using (SqlCommand cmd = new SqlCommand(sql, con))
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                Product product;
                while (dr.Read())
                {
                    product = new Product();
                    product.ProductID = dr["ProductID"].ToString();
                    product.Name = dr["Name"].ToString();
                    // product.OnHand = dr["OnHand"];
                    product.OnHand = Convert.ToInt32(dr["OnHand"]);
                    // Convert.ToInt32(TextBoxD1.Text)  Int32.Parse(ii)   Convert.ToInt32(value)
                    productList.Add(product);
                }
                dr.Close();
            }
        }
        return productList;
    }

    [DataObjectMethod(DataObjectMethodType.Insert)]
    public static void InsertProduct(Product product)
    {
        string sql = "INSERT INTO Products "
            + "(ProductID, Name, OnHand) "
            + "VALUES (@ProductID, @Name, @OnHand)";
        using (SqlConnection con = new SqlConnection(GetConnectionString()))
        {
            using (SqlCommand cmd = new SqlCommand(sql, con))
            {
                cmd.Parameters.AddWithValue("ProductID", product.ProductID);
                cmd.Parameters.AddWithValue("Name", product.Name);
                cmd.Parameters.AddWithValue("OnHand", product.OnHand);
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }
    }


    [DataObjectMethod(DataObjectMethodType.Delete)]
    public static int DeleteProduct(Product product)
    {
        int deleteCount = 0;
        string sql = "DELETE FROM Products "
            + "WHERE ProductID = @ProductID "
            + "AND Name = @Name "
            + "AND OnHandName = @OnHand";
        using (SqlConnection con = new SqlConnection(GetConnectionString()))
        {
            using (SqlCommand cmd = new SqlCommand(sql, con))
            {
                cmd.Parameters.AddWithValue("ProductID", product.ProductID);
                cmd.Parameters.AddWithValue("Name", product.Name);
                cmd.Parameters.AddWithValue("OnHand", product.OnHand);
                con.Open();
                deleteCount = cmd.ExecuteNonQuery();
            }
        }
        return deleteCount;
    }

    [DataObjectMethod(DataObjectMethodType.Update)]
    public static int UpdateProduct(Product original_Product,
        Product product)
    {
        int updateCount = 0;
        string sql = "UPDATE Products "
            + "SET Name = @Name, "
            + "OnHand = @OnHand "
            + "WHERE ProductID = @original_ProductID "
            + "AND Name = @original_Name "
            + "AND OnHand = @original_OnHand";
        using (SqlConnection con = new SqlConnection(GetConnectionString()))
        {
            using (SqlCommand cmd = new SqlCommand(sql, con))
            {
                cmd.Parameters.AddWithValue("Name", product.Name);
                cmd.Parameters.AddWithValue("OnHand", product.OnHand);
                cmd.Parameters.AddWithValue("original_ProductID",
                    original_Product.ProductID);
                cmd.Parameters.AddWithValue("original_Name",
                    original_Product.Name);
                cmd.Parameters.AddWithValue("original_OnHand",
                    original_Product.OnHand);
                con.Open();
                updateCount = cmd.ExecuteNonQuery();
            }
        }
        return updateCount;
    }

    private static string GetConnectionString()
    {
        return ConfigurationManager.ConnectionStrings
            ["HalloweenConnectionString"].ConnectionString;
    }

}
