package model;

public class OrderProduct {

    private int OID, PID, quantity;

    public OrderProduct(int OID, int PID, int quantity) {
        this.OID = OID;
        this.PID = PID;
        this.quantity = quantity;
    }

    public int getOID() {
        return OID;
    }

    public int getPID() {
        return PID;
    }

    public int getQuantity() {
        return quantity;
    }
}
