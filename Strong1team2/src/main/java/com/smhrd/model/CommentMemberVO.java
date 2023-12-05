package com.smhrd.model;

// 댓글 테이블 데이터를 저장할 수 있도록 나만의 자료형
// 댓글 테이블 관련!!!!!
// 범석
public class CommentMemberVO {
   // 댓글 번호
   private Integer CMT_NUM;
   
   // 원글 번호
   private Integer B_NUM;
   
   // 댓글 내용
   private String CMT_CONTENT;
   
   // 댓글 작성일자
   private String COMMENTED_AT;
   
   // 댓글 좋아요수
   private Integer CMT_LIKES;
   
   // 댓글 작성자
   private String EMAIL;

   public Integer getCMT_NUM() {
      return CMT_NUM;
   }

   public void setCMT_NUM(Integer CMT_NUM) {
      this.CMT_NUM = CMT_NUM;
   }

   public Integer getB_NUM(){
      return B_NUM;
   }

   public void setB_NUM(Integer B_NUM) {
      this.B_NUM = B_NUM;
   }

   public String getCMT_CONTENT() {
      return CMT_CONTENT;
   }

   public void setCMT_CONTENT(String CMT_CONTENT) {
      this.CMT_CONTENT = CMT_CONTENT;
   }

   public String getCOMMENTED_AT() {
      return COMMENTED_AT;
   }

   public void setCOMMENTED_AT(String COMMENTED_AT) {
      this.COMMENTED_AT = COMMENTED_AT;
   }

   public Integer getCMT_LIKES() {
      return CMT_LIKES;
   }

   public void setCMT_LIKES(Integer CMT_LIKES) {
      this.CMT_LIKES = CMT_LIKES;
   }

   public String getEMAIL() {
      return EMAIL;
   }

   public void setEMAIL(String EMAIL) {
      this.EMAIL = EMAIL;
   }
   
   




}
