package main.java.com.bean;

public class orderBean {
    private int oid;
    private String otime;
    private long uid;
    private String sname;
    private String olist;
    private String ocondition;

    public String getOcondition() {
        return ocondition;
    }

    public void setOcondition(String ocondition) {
        if (ocondition.equals("新创建")||ocondition.equals("未支付")||ocondition.equals("已完成")){
            this.ocondition = ocondition;
        }else {
            this.ocondition = "状态错误";
        }

    }

    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public String getOtime() {
        return otime;
    }

    public void setOtime(String otime) {
        this.otime = otime;
    }

    public long getUid() {
        return uid;
    }

    public void setUid(long uid) {
        this.uid = uid;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getOlist() {
        return olist;
    }

    public void setOlist(String olist) {
        this.olist = olist;
    }
}
