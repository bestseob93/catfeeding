class HomeController < ApplicationController
  def index
    unless user_signed_in?
      redirect_to "/users/sign_in"
    end
  end
  
   # 신청현황 삭제
   def post_destroy
        @post_one = Post.find(params[:post_id])
        @post_one.destroy
        redirect_to "/home/meeting_board" 
   end
   
   # 신청현황 업데이트
   def post_update
        @post_one = Post.find(params[:post_id])
   end
   
   def post_siljae_update
        @post_one = Post.find(params[:post_id])
        @post_one.titleofpost = params[:titleofpost]
        @post_one.descriptionofpost= params[:descriptionofpost]
        @post_one.school = params[:school]
        @post_one.sex = params[:sex]
        @post_one.per_count = params[:per_count]
        @post_one.save
        redirect_to "/home/meeting_board" 
   end
 
   def board_write

   end

  def ques_write
    new_question = Question.new
    new_question.title = params[:title]
    new_question.content= params[:content]
    new_question.quser = params[:quser]
    new_question.save
    redirect_to "/home/question"
  end
  
  # QnA 삭제
      def ques_destroy
        @one_post = Question.find(params[:post_id])
        @one_post.destroy
        redirect_to "/home/question" 
      end
      
   
      def ques_update2
         @one_post3 = Question.find(params[:post_id])
      end
      
      def real_ques_update
        @one_post3 = Question.find(params[:post_id])
        @one_post3.title = params[:title]
        @one_post3.quser = params[:quser]
        @one_post3.content = params[:content]
        @one_post3.save
        redirect_to "/home/question"
      end
      
      def writeacting
         @hnew_name = params[:writer_name]
         @hnew_title = params[:titleofpost]
         @hnew_description = params[:descriptionofpost]
         @hnew_school = params[:school]
         @hnew_sex = params[:sex]
         @hnew_per_count = params[:per_count]
       
     
       h_post = Post.new
       h_post.writename = @hnew_name
       h_post.titleofpost = @hnew_title
       h_post.descriptionofpost = @hnew_description
       h_post.school = @hnew_school
       h_post.sex = @hnew_sex
       h_post.per_count = @hnew_per_count
       
       h_post.save
       
       redirect_to "/home/meeting_board"
  end
  
  def meeting_board
     @every_post = Post.all.order("id desc")
  end
  
  def question

    @every_post2 = Question.all.order("id desc")
  end
  
  def update_view
       @view_post = Question.find(params[:post_id])
  end
  
  def reply_write
    reply = Reply.new
    reply.content = params[:content]
    reply.question_id = params[:id_of_post]
    reply.save
    
    redirect_to :back
  end
 
end




