<tr>
	<td><?php //echo $i; $i++;?></td>
	<td><?php echo $model->username;?></td>
	<td><?php
		$this->widget('editable.Editable', array(
			'type'      => 'text',
			'name'      => 'user_name',
			'pk'        => $model->id,
			'text'      => $model->email,
			'url'       => $this->createUrl('/user/user/editemail'), 
			'title'     => 'Enter an email',
			'placement' => 'right'
		));
	//echo $value->email;?></td>
	<td><?php echo User::itemAlias("UserStatus",$model->status);?></td>
</tr>