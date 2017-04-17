
$(document).ready(function(){

//data
	var deleteData ='';
	var deleteNode = undefined;

	var editNode =undefined;

	var memberDialog = undefined;

//methods
	function addMemberDIalog(html){

		local = $(html);

		if(memberDialog){
			//$(memberDialog).remove();
			memberDialog = $(local).replaceAll(memberDialog);
		} else {
			memberDialog = $(html).prependTo('.hallTable .cContent');
		}
	}

	function updateNode(localNode){

		if(editNode == undefined){
			editNode = $(localNode).prependTo('.hallTable > .cContent table tbody');
		} else {
			editNode = $(localNode).replaceAll(editNode);						
		}
	}

//click handlers

	//add / edit member dialog
	$('.hallTable').on('click','.addMember',function(event){
		event.preventDefault();

		var data ='shortType=hallTable&'+this.search.replace('?','');

		//alert(data);

		$.ajax(
		{
			type:"POST",
			url: 'short.php',
			data: data,
			success: function(msg)
			{
				//alert(msg);
				//remove existing dialogs
				addMemberDIalog(msg);
				editNode =undefined;
				setupDialog();					
			}
		});
	});

	// edit member dialog
	$('.hallTable').on('click','.editMember',function(event){
		event.preventDefault();

		var data ='shortType=hallTable&'+this.search.replace('?','');

		//alert(data);
		var _this = this;

		$.ajax(
		{
			type:"POST",
			url: 'short.php',
			data: data,
			success: function(msg)
			{
				//alert(msg);
				//remove existing dialogs
				addMemberDIalog(msg);
				editNode =$(_this).closest('tr');
				setupDialog();					
			}
		});
	});



	//delete member
	$('.hallTable').on('click','.deleteMember',function(event){
		event.preventDefault();
		var data ='shortType=hallTable&'+this.search.replace('?','');

		//alert(data);
		var _this = this

		$.ajax(
		{
			type:"POST",
			url: 'short.php',
			data: data,
			success: function(msg)
			{
				//alert(msg);
				deleteData = data;
				deleteNode = $(_this).closest('tr');
				$('.hallTable .cContent').prepend(msg);
				setupDialog();					
			}
		});
	});

	//delete confirm Ok
	$('.hallTable').on('click','.deleteConfirmOk',function(event){
		event.preventDefault();
		
		var formData = $(this).closest('form').serialize();
		var data =deleteData+'&'+formData;

		//alert(data);

		var _this = this;

		$.ajax(
		{
			type:"POST",
			url: 'short.php',
			data: data,
			dataType: 'json',
			success: function(msg)
			{

				if(msg.success){
					$(deleteNode).remove();
					deleteData = '';
					deleteNode = undefined;
					$(_this).closest('.dialog').remove();
				}					
			}
		});
	});

	//delete confirm Cancel
	$('.hallTable').on('click','.deleteConfirmCancel',function(event){
		event.preventDefault();

		var formData = $(this).closest('form').serialize();
		var data =deleteData+'&'+formData;

		//alert(data);

		var _this = this;

		$.ajax(
		{
			type:"POST",
			url: 'short.php',
			data: data,
			dataType: 'json',
			success: function(msg)
			{
				//alert(msg);
				if(msg.success){
					deleteData = '';
					deleteNode = undefined;
					$(_this).closest('.dialog').remove();
				}				
			}
		});
	});

	//add award
	$('.hallTable').on('click','.addAward',function(event){
		event.preventDefault();

		var data ='shortType=hallTable&'+this.search.replace('?','');

		var _this = this;

		//alert(data);
		$.ajax(
		{
			type:"POST",
			url: 'short.php',
			data: data,
			success: function(msg)
			{
				//alert(msg);
				$(_this).parent().before(msg);
			}
		});
	});


	//delete award
	$('.hallTable').on('click','.deleteAward',function(event){
		event.preventDefault();

		var data ='shortType=hallTable&'+this.search.replace('?','');

		var _this = this;

		//alert(data);
		$.ajax(
		{
			type:"POST",
			url: 'short.php',
			data: data,
			success: function(msg)
			{
				//alert(msg);
				$(_this).closest('.hofAward').remove();
			}
		});
	});


	//submit member form
	$('.hallTable').on('click','.submitMember',function(event){
		event.preventDefault();

		var formData = $(this).closest('form').serialize();
		var data ='shortType=hallTable&'+formData;
		//alert(data);

		var _this = this;

		$.ajax(
		{
			type:"POST",
			url: 'short.php',
			data: data,
			dataType: 'json',
			success: function(msg)
			{

				if(msg.dialog){
					addMemberDIalog(msg.dialog);
					setupDialog();

					if(msg.success === false){
						$(memberDialog).effect("shake");
					}
				}

				if(msg.node){
					updateNode($(msg.node));
				}
			}
		});
	});



});
