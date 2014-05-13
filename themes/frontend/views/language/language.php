<form action= "/language/changelanguage" method="POST" id="selectlanguage">
	<select name="dropDown" id="dropDown">
		<option value="0" selected="selected">
		<?php echo Yii::t('strings','Select language')?></option>
		<option value="en">en</option>
		<option value="fr">fr</option>
		<option value="ar">ar</option>
	</select>

</form >
<script>
$(document).ready(function(){
	$('#dropDown').change(function(){
		$('#selectlanguage').submit();
	})
})
</script>