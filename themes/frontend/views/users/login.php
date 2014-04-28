<style>
.button{
  width:100px;
  background:#3399cc;
  display:block;
  margin:0 auto;
  margin-top:1%;
  padding:10px;
  text-align:center;
  text-decoration:none;
  color:#fff;
  cursor:pointer;
  transition:background .3s;
  -webkit-transition:background .3s;
}

.button:hover{
  background:#2288bb;
}

#login{
  width:400px;
  margin:0 auto;
  margin-top:8px;
  margin-bottom:2%;
  transition:opacity 1s;
  -webkit-transition:opacity 1s;
}

#login #triangle{
  width:0;
  border-top:12x solid transparent;
  border-right:12px solid transparent;
  border-bottom:12px solid #3399cc;
  border-left:12px solid transparent;
  margin:0 auto;
}

#login #login h1{
  background:#3399cc;
  padding:20px 0;
  font-size:140%;
  font-weight:300;
  text-align:center;
  color:#fff;
}

#login form{
  background:#f0f0f0;
  padding:6% 4%;
}

#login input[type="email"],input[type="password"]{
  width:92%;
  background:#fff;
  margin-bottom:4%;
  border:1px solid #ccc;
  padding:4%;
  font-family:'Open Sans',sans-serif;
  font-size:95%;
  color:#555;
}

#login input[type="submit"]{
  width:100%;
  background:#3399cc;
  border:0;
  padding:4%;
  font-family:'Open Sans',sans-serif;
  font-size:100%;
  color:#fff;
  cursor:pointer;
  transition:background .3s;
  -webkit-transition:background .3s;
}

#login input[type="submit"]:hover{
  background:#2288bb;
}
#login .errorSummary ul{
	
}
</style>

<div id="login">
  <!--div id="triangle"></div-->
  <h1>Log in</h1>
  <?php echo CHtml::beginForm(); ?>
	<?php echo CHtml::errorSummary($model); ?>
	<?php echo CHtml::activeTextField($model,'username',array('placeholder'=>'Email')) ?>
	<?php echo CHtml::activePasswordField($model,'password',array('placeholder'=>'Password')) ?>
	<?php echo CHtml::submitButton(UserModule::t("Login")); ?>
  <?php echo CHtml::endForm(); ?>
</div>