$(document).ready(function(){


					$('#add-student').validate(
					{
						rules : {
							studentFirstName : {
								minlength : 4,
								required : true
							},

							studentFatherName : {
								minlength : 4,
								required : true
							},
							studentMotherName : {
								minlength : 4,
								required : true
							},
							caste : {
								required : true
							},
							religion : {
								required : true
							},
							studentLastName : {
								minlength : 4,
								required : true
							},
							fee : {
								required : true
							},
							mobileNo : {
								required : true,
								email : true
							},

							village : {
								minlength : 10,
								required : true
							},
		  
		  agree: "required"
		  
	    },
			highlight: function(element) {
				$(element).closest('.control-group').removeClass('success').addClass('error');
			},
			success: function(element) {
				element
				.text('OK!').addClass('valid')
				.closest('.control-group').removeClass('error').addClass('success');
			}
	  });
		
		
		$('#datePicker')
        .datepicker({
            format: 'mm/dd/yyyy'
        })
        .on('changeDate', function(e) {
            // Revalidate the date field
            $('#add-student').formValidation('revalidateField', 'date');
        });

   $('#add-student').formValidation({
        framework: 'bootstrap',
        icon: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            date: {
                validators: {
                    notEmpty: {
                        message: 'The date is required'
                    },
                    date: {
                        format: 'MM/DD/YYYY',
                        message: 'The date is not a valid'
                    }
                }
            }
        }
    });
	

}); // end document.ready