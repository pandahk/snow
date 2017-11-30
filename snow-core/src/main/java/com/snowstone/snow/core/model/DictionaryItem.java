package com.snowstone.snow.core.model;

import java.util.Date;

public class DictionaryItem {
    private Integer id;

    private String itemCode;

    private String itemName;

    private String itemParentCode;

    private String groupCode;

    private Integer status;

    private Date createTime;

    private Date updateTime;

    private String resv1;

    private String resv2;

    private String resv3;

    private String resv4;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getItemCode() {
        return itemCode;
    }

    public void setItemCode(String itemCode) {
        this.itemCode = itemCode == null ? null : itemCode.trim();
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName == null ? null : itemName.trim();
    }

    public String getItemParentCode() {
        return itemParentCode;
    }

    public void setItemParentCode(String itemParentCode) {
        this.itemParentCode = itemParentCode == null ? null : itemParentCode.trim();
    }

    public String getGroupCode() {
        return groupCode;
    }

    public void setGroupCode(String groupCode) {
        this.groupCode = groupCode == null ? null : groupCode.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getResv1() {
        return resv1;
    }

    public void setResv1(String resv1) {
        this.resv1 = resv1 == null ? null : resv1.trim();
    }

    public String getResv2() {
        return resv2;
    }

    public void setResv2(String resv2) {
        this.resv2 = resv2 == null ? null : resv2.trim();
    }

    public String getResv3() {
        return resv3;
    }

    public void setResv3(String resv3) {
        this.resv3 = resv3 == null ? null : resv3.trim();
    }

    public String getResv4() {
        return resv4;
    }

    public void setResv4(String resv4) {
        this.resv4 = resv4 == null ? null : resv4.trim();
    }
}