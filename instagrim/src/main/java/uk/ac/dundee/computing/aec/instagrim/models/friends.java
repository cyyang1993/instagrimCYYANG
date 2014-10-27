/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package uk.ac.dundee.computing.aec.instagrim.models;

import com.datastax.driver.core.BoundStatement;
import com.datastax.driver.core.Cluster;
import com.datastax.driver.core.PreparedStatement;
import com.datastax.driver.core.ResultSet;
import com.datastax.driver.core.Row;
import com.datastax.driver.core.Session;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.Date;

import uk.ac.dundee.computing.aec.instagrim.lib.AeSimpleSHA1;
import uk.ac.dundee.computing.aec.instagrim.stores.Pic;

import com.datastax.driver.core.BoundStatement;
import com.datastax.driver.core.Cluster;
import com.datastax.driver.core.PreparedStatement;
import com.datastax.driver.core.ResultSet;
import com.datastax.driver.core.Row;
import com.datastax.driver.core.Session;
import com.datastax.driver.core.utils.Bytes;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Date;
import java.util.LinkedList;

import javax.imageio.ImageIO;

import static org.imgscalr.Scalr.*;

import org.imgscalr.Scalr.Method;

import uk.ac.dundee.computing.aec.instagrim.lib.*;
import uk.ac.dundee.computing.aec.instagrim.stores.Pic;
import uk.ac.dundee.computing.aec.instagrim.lib.CassandraHosts;
import uk.ac.dundee.computing.aec.instagrim.lib.Convertors;
import uk.ac.dundee.computing.aec.instagrim.models.PicModel;
import uk.ac.dundee.computing.aec.instagrim.stores.LoggedIn;
import uk.ac.dundee.computing.aec.instagrim.stores.Pic;
//import uk.ac.dundee.computing.aec.stores.TweetStore;

/**
 *
 * @author Administrator
 */
public class friends {
    Cluster cluster;
    public friends(){
        
    }
    
    public java.util.LinkedList<String> GetFriendforuser(String username){
    	java.util.LinkedList<String> friends = new java.util.LinkedList<>();
        Session session = cluster.connect("instagrimCYYANG");
        PreparedStatement ps = session.prepare("select all friend from FriendsList where user =?");
        BoundStatement boundStatement = new BoundStatement(ps);
        ResultSet rs = null;
        rs= session.execute( boundStatement.bind( username));
        for (Row row : rs) {
        			 String friend = new String();
        			 friend = row.getString("friend");
        			 friends.add(friend);
                }
        return friends;
    }
    
public java.util.LinkedList<String> getusers(){
	java.util.LinkedList<String> users=new java.util.LinkedList<>();
	 Session session = cluster.connect("instagrimCYYANG");
	    PreparedStatement ps = session.prepare("select * from  userprofiles  ");
	    ResultSet rs = null;
	    BoundStatement boundStatement = new BoundStatement(ps);
	    rs = session.execute(   boundStatement.bind( ));
	    for (Row row : rs) {
			 String friend = new String();
			 friend = row.getString("login");
			 users.add(friend);
       }
	    return users;
    }
    
   
    public boolean SetFriend(String username, String friendname){
    	
        Session session = cluster.connect("instagrimCYYANG");
        PreparedStatement ps = session.prepare("insert into FriendsList(user,friend,friend_added) values(?,?,?)");
        BoundStatement boundStatement = new BoundStatement(ps);
        Date DateAdded = new Date();
        session.execute( boundStatement.bind( username,friendname,DateAdded));
        //We are assuming this always works.  Also a transaction would be good here !
        session.close();
        return true;
    }
       public void setCluster(Cluster cluster) {
        this.cluster = cluster;
    }

    
}
