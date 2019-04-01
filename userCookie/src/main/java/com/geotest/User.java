package com.geotest;

public class User {
    private String mUserName;
    private String mPassWord;
    private String mUserRealName;
    private String mPId;
    private String mSex;
    private String mInterest;

    @Override
    public String toString() {
        return "User{" +
                "mUserName='" + mUserName + '\'' +
                ", mPassWord='" + mPassWord + '\'' +
                ", mUserRealName='" + mUserRealName + '\'' +
                ", mPId='" + mPId + '\'' +
                ", mSex='" + mSex + '\'' +
                ", mInterest='" + mInterest + '\'' +
                '}';
    }

    public String getmUserRealName() {
        return mUserRealName;
    }

    public void setmUserRealName(String mUserRealName) {
        this.mUserRealName = mUserRealName;
    }

    public String getmPId() {
        return mPId;
    }

    public void setmPId(String mPId) {
        this.mPId = mPId;
    }

    public String getmSex() {
        return mSex;
    }

    public void setmSex(String mSex) {
        this.mSex = mSex;
    }

    public String getmInterest() {
        return mInterest;
    }

    public void setmInterest(String mInterest) {
        this.mInterest = mInterest;
    }

    public User(String mUserName, String mPassWord, String mUserRealName, String mPId, String mSex, String mInterest) {
        this.mUserName = mUserName;
        this.mPassWord = mPassWord;
        this.mUserRealName = mUserRealName;
        this.mPId = mPId;
        this.mSex = mSex;
        this.mInterest = mInterest;
    }

    public String getmUserName() {
        return mUserName;
    }

    public void setmUserName(String mUserName) {
        this.mUserName = mUserName;
    }

    public String getmPassWord() {
        return mPassWord;
    }

    public void setmPassWord(String mPassWord) {
        this.mPassWord = mPassWord;
    }

    public User(String mUserName, String mPassWord) {
        this.mUserName = mUserName;
        this.mPassWord = mPassWord;
    }
}
