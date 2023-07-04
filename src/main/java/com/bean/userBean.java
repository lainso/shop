package main.java.com.bean;

public class userBean {
    private long uid;
    private String uname;
    private String upass;
    private String utel;
    private String utype;
    private int umoney;

    public int getUmoney() {
        return umoney;
    }

    public void setUmoney(int umoney) {
        this.umoney = umoney;
    }

    public long getUid() {
        return uid;
    }

    public void setUid(long uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUpass() {
        return upass;
    }

    public void setUpass(String upass) {
        this.upass = upass;
    }

    public String getUtel() {
        return utel;
    }

    public void setUtel(String utel) {
        this.utel = utel;
    }

    public String getUtype() {
        return utype;
    }

    public void setUtype(String utype) {
        if (utype.equals("运营商") || utype.equals("店家") || utype.equals("顾客")){
            this.utype = utype;
        }else {
            this.utype = "错误的角色判定";
        }
    }
}
