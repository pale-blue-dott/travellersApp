package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.algorithm.NewClassifier;
import com.algorithm.Classifier;
import com.bean.ReviewsBean;
import com.connection.DBConnection;
import com.dao.UserDao;

@WebServlet("/GiveReviewController")
public class GiveReviewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	int position = 0;
	int nposition = 0;
	String negword = null;
	int finalresult = 0;
	String result="";
	int resultfinal = 0;
	String newwords[] = null;  
    public GiveReviewController() {
        super();
       
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out=response.getWriter();
		
		ArrayList<String>list=new ArrayList<String>();
		
		HttpSession ss=request.getSession();
		String email=(String) ss.getAttribute("email");
		String locationid=(String) ss.getAttribute("locationid");
		int userId=(Integer) ss.getAttribute("userId");
		String star=request.getParameter("star");
		String review=request.getParameter("review");
		list.add(review);
		
		Classifier<String, String> bayes = new NewClassifier<String, String>();
		final String[] positiveText = {"love", "like", "happy", "good", "sunny", "able", "average" , "newsletter", 
				"from", "your", "favorite", "website",
				 "love","like", "happy", "good", "sunny", "able", "temperature","climate",
				 "wind","beautiful","waterfall","climbing","race","spring","morning","home","cleared"};
				//.split("\\s");
	    bayes.learn("Positive", Arrays.asList(positiveText));

	    final String[] negativeText = {"unlike", "unable", "hate", "sad", "bad", "rainy", "not", "like", "poor",
	    		"money","credit", "$", "sign","job","hiring",
	    		"offer", "order", "hot", "nude", "click", "amateur", "pics","videos",
	    		"hardcore","teen","sex","limited","free","advertisement","mortgage","must-read","unsubscribe",
	    		"dollar","special","deposit","donation","register","lottery","guaranteed","exotic","opening","work"
	    		
	    };
	    bayes.learn("Negative", Arrays.asList(negativeText));
	    String words="";		
		
	    
	    if(list.size()>0){
			System.out.println("list size"+list.size());
			for(int i=0;i<list.size();i++){	
				words=list.get(i);
				words=words.toLowerCase();
				words=words.replace(".","");
				words=words.replace(",","");
				words=words.replace("!","");
				//words=words.replace(":d","");
				words=words.replace(":)","");
				words=words.replace(":","");
				words=words.replace(";","");
				words=words.replace("?","");
				//words=words.replace("'","");
				words=words.replace("*","");
				words=words.replace("^","");
				words=words.replace("<3","");				
				String word[]=words.split("\\s+");
				String bayesResult = bayes.classify(Arrays.asList(word)).getCategory();
				for(int j=0;j<word.length;j++){
					word[j]=removeDup(word[j]);
				}
		
               ReviewsBean bean=new ReviewsBean();
               
               bean.setLocationid(locationid);
               bean.setReview(review);
               bean.setBayesResult(bayesResult);
               bean.setUserEmail(email);
               bean.setUserId(userId);
               bean.setRating(star);
               
               UserDao dao=new UserDao();
               
			if (dao.InsertReviews(bean)) {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Review Successfully Submitted')");
				System.out.println("1 "+locationid);
				out.println("location='ViewReviews.jsp?id="+locationid+"';");
				out.println("</script>");
			} 
			else {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Fail...........')");
				out.println("location='ViewReviews.jsp?id="+locationid+"';");
				out.println("</script>");
			}
		} 
	}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}
	
	public  String removeDup(String str){
		str = str + " "; // Adding a space at the end of the word
        int l=str.length(); // Finding the length of the word
		String ans="";
		char ch1,ch2;
				 
        for(int i=0; i<l-1; i++)
        {
            ch1=str.charAt(i); // Extracting the first character
            ch2=str.charAt(i+1); // Extracting the next character
 
// Adding the first extracted character to the result if the current and the next characters are different
            int count= countRun(str, ch1);
            if(count==2){
            	ans = ans + ch1;
            }else if(ch1!=ch2){            
            	ans = ans + ch1;
            }            
        }
	    return ans;
    }
	
	public static int countRun( String s, char c )
	{
	    int counter = 0;
	    for( int i = 0; i < s.length(); i++)
	    {
	      if( s.charAt(i) == c )  counter++;
	      else if(counter>0) break;
	    }
	    return counter;
	}


}
