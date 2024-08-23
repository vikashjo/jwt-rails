**JWT**

    A JSON Web Token is an internet standard defined by the Internet Engineering Task Force (IETF) as a: "compact, URL-safe means of representing claims to be transferred between two parties".

**Installing**
     
     - gem 'jwt', '~> 2.7'
     - gem "bcrypt", "~> 3.1.7"Using Rubygems:
  We need to add the has_secure_password class method in our User model.

**Generate User and Product Models**

     - rails g model User name:string email:string username:string password_digest:string
     - rails g model Product name:string description:text

**Integrating JWT to our app**

     - Our wrapper class is found in app/lib/json_web_token.rb

**Using JWTs in Application Controller**

     - We create an authenticate method to decode JSON Web tokens that users send us. If we can successfully verify the token, we return the User object that represents the user making the request. 

**Add Authentication Controller**

    - Next, we need an AuthenticationController to which users can send requests and get a signed JSON Web Token from our server. This controller should be placed at app/controllers/authentication_controller.rb.





