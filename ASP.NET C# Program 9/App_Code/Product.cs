using System;

public class Product
{
    private string productID;
    private string name;
    private int onHand;

    public Product()
     {
     }

    public string ProductID
    {
        get
        {
            return productID;
        }
        set
        {
            productID = value;
        }
    }

    public string Name
    {
        get
        {
            return name;
        }
        set
        {
            name = value;
        }
    }

    public int OnHand
    {
        get
        {
            return onHand;
        }
        set
        {
            onHand = value;
        }
    }
}
