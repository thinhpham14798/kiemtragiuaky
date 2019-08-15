using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
/// <summary>
/// Summary description for UserDAO
/// </summary>
public class UserDAO
{string connectionString = ConfigurationManager.ConnectionStrings["MyDB"].ToString(); 

        public bool CheckUser(string userName)
        {
             string sql = @"SELECT COUNT(*)                             
                          FROM UserInfo                             
                          WHERE UserName = @usn";            
            using (SqlConnection connection =                 
                new SqlConnection(connectionString)) 
            {
                 SqlCommand command = new SqlCommand(sql, connection);                 
                 command.Parameters.AddWithValue("@usn", userName); 
 
                 connection.Open();                 
                 int count = (int)command.ExecuteScalar(); 
 
                 return (count >= 1);                 
                //if (count >= 1) return true;                 
                //else return false;   
            }
        }
        public bool GetQuery(string query)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                connection.Open();
                int count = (int)command.ExecuteScalar();
                return (count >= 1);
            }
        }
        public bool Insert(User user) 
        {
             using (SqlConnection connection =                
                 new SqlConnection(connectionString)) 
             {
                 string sql = @"INSERT INTO                                  
                              UserInfo(UserName,Password,FirstName,LastName,Email,Gender,Address)                                
                              VALUES(@username,@password,                                        
                                     @firstname,@lastname,@email,                                   
                                     @gender,@address)"; 
 
                SqlCommand cmd = new SqlCommand(sql, connection);                
                cmd.Parameters.AddWithValue("@username", user.UserName);                 
                cmd.Parameters.AddWithValue("@password", user.PassWord);                 
                cmd.Parameters.AddWithValue("@firstname", user.FirstName);                 
                cmd.Parameters.AddWithValue("@lastname", user.LastName);                 
                cmd.Parameters.AddWithValue("@email", user.Email);                
                cmd.Parameters.AddWithValue("@gender", user.Gender);                 
                cmd.Parameters.AddWithValue("@address", user.Address); 
 
                connection.Open();                 
                int result = cmd.ExecuteNonQuery();                
                return (result >= 1);   
             }
        }
	}
