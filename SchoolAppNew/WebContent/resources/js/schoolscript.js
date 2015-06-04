$(document).ready(function() {
	
	
	$('#datePicker')
    .datepicker({
        format: 'dd/mm/yyyy',
        autoclose:true
    })
    .on('changeDate', function(e) {
        // Revalidate the date field
        $('#addStudent').formValidation('revalidateField', 'date');
        
    });
	
	$('#datePicker1')
    .datepicker({
        format: 'dd/mm/yyyy',
        autoclose:true
    })
    .on('changeDate', function(e) {
        // Revalidate the date field
        $('#addTeacher').formValidation('revalidateField', 'date');
        
    });
	
	$('#datePicker')
    .datepicker({
        format: 'dd/mm/yyyy',
        autoclose:true
    })
    .on('changeDate', function(e) {
        // Revalidate the date field
        $('#addTeacher').formValidation('revalidateField', 'date');
        
    });
	
	$('#datePicker1')
    .datepicker({
        format: 'dd/mm/yyyy',
        autoclose:true
    })
    .on('changeDate', function(e) {
        // Revalidate the date field
        $('#addStudent').formValidation('revalidateField', 'date');
        
    });
	
	$('#examDatePicker')
    .datepicker({
        format: 'dd/mm/yyyy',
        autoclose:true
    })
    .on('changeDate', function(e) {
        // Revalidate the date field
        $('#addResult').formValidation('revalidateField', 'date');
        
    });
	
    $('#addStudent').formValidation({
        message: 'This value is not valid',
        icon: {
           // valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            studentFirstName: {
                row: '.col-sm-4',
                validators: {
                    notEmpty: {
                        message: 'The first name is required'
                    }
                }
            },
            studentLastName: {
                row: '.col-sm-4',
                validators: {
                    notEmpty: {
                        message: 'The last name is required'
                    }
                }
            },
            studentFatherName: {
                row: '.col-sm-5',
                validators: {
                    notEmpty: {
                        message: 'The Student Father name is required'
                    }
                }
            },
            studentMotherName: {
                row: '.col-sm-5',
                validators: {
                    notEmpty: {
                        message: 'The Student Mother name is required'
                    }
                }
            },
            gender: {
                validators: {
                    notEmpty: {
                        message: 'The gender is required'
                    }
                }
            },
            section: {
                validators: {
                    notEmpty: {
                        message: 'The section is required'
                    }
                }
            },
            fee: {
                validators: {
                    notEmpty: {
                        message: 'The fee is required'
                    }
                }
            },
            religion: {
                validators: {
                    notEmpty: {
                        message: 'The religion is required'
                    }
                }
            },
            caste: {
                validators: {
                    notEmpty: {
                        message: 'The caste is required'
                    }
                }
            },
            mobileNo: {
                validators: {
                    notEmpty: {
                        message: 'The Mobile Number is required'
                    }
                }
            },
            village: {
            	row: '.col-sm-5',
                validators: {
                    notEmpty: {
                        message: 'The Address is required'
                    }
                }
            },
            studentDob: {
                    validators: {
                        notEmpty: {
                            message: 'The Student Date Of Birth  is required'
                        },
                        date: {
                            format: 'DD/MM/YYYY',
                            min: '01/01/1970',
                            max: '30/03/2050',
                            message: 'The date is not a valid'
                        }
                    }
                }
        },
        studentDoj: {
            validators: {
                notEmpty: {
                    message: 'The Student Date Of Joinee  is required'
                },
                date: {
                    format: 'DD/MM/YYYY',
                    min: '01/01/1970',
                    max: '30/03/2050',
                    message: 'The date is not a valid'
                }
            }
        }

    });
    
    $('#addTeacher').formValidation({
        message: 'This value is not valid',
        icon: {
           // valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	firstName: {
                row: '.col-sm-4',
                validators: {
                    notEmpty: {
                        message: 'The first name is required'
                    }
                }
            },
            lastName: {
                row: '.col-sm-4',
                validators: {
                    notEmpty: {
                        message: 'The last name is required'
                    }
                }
            },
            qualification: {
                row: '.col-sm-5',
                validators: {
                    notEmpty: {
                        message: 'The qualification is required'
                    }
                }
            },
            subject: {
                row: '.col-sm-5',
                validators: {
                    notEmpty: {
                        message: 'The subject is required'
                    }
                }
            },
            experience: {
            	row: '.col-sm-5',
                validators: {
                    notEmpty: {
                        message: 'The experience is required'
                    }
                }
            },
            caste: {
            	row: '.col-sm-5',
                validators: {
                    notEmpty: {
                        message: 'The caste is required'
                    }
                }
            },
            mobileNo: {
            	row: '.col-sm-5',
                validators: {
                    notEmpty: {
                        message: 'The Mobile Number is required'
                    }
                }
            },
            village: {
            	row: '.col-sm-5',
                validators: {
                    notEmpty: {
                        message: 'The Address is required'
                    }
                }
            },
            dob: {
                    validators: {
                        notEmpty: {
                            message: 'The Teacher Date Of Birth  is required'
                        },
                        date: {
                            format: 'DD/MM/YYYY',
                            min: '01/01/1970',
                            max: '30/03/2050',
                            message: 'The date is not a valid'
                        }
                    }
                },
                doj: {
                    validators: {
                        notEmpty: {
                            message: 'The Teacher Date Of Joinee  is required'
                        },
                        date: {
                            format: 'DD/MM/YYYY',
                            min: '01/01/1950',
                            max: '30/03/2050',
                            message: 'The date is not a valid'
                        }
                    }
                }
        }
    });
    $('#addFee').formValidation({
        message: 'This value is not valid',
        icon: {
           // valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	/*studentName: {
                row: '.col-sm-5',
                validators: {
                    notEmpty: {
                        message: 'The Student name is required'
                    }
                }
            },*/
            rollno: {
                row: '.col-sm-5',
                validators: {
                    notEmpty: {
                        message: 'The roll no is required'
                    }
                }
            },
            feePaid: {
                row: '.col-sm-5',
                validators: {
                    notEmpty: {
                        message: 'The feed Paid is required'
                    }
                }
            }
            
            
        }
    });
    $('#addResult').formValidation({
        message: 'This value is not valid',
        icon: {
           // valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	/*studentName: {
                row: '.col-sm-5',
                validators: {
                    notEmpty: {
                        message: 'The full name is required'
                    }
                }
            },*/
            rollno: {
                row: '.col-sm-5',
                validators: {
                    notEmpty: {
                        message: 'The roll no is required'
                    }
                }
            },
            examTitle: {
                row: '.col-sm-5',
                validators: {
                    notEmpty: {
                        message: 'The exam title is required'
                    }
                }
            },
            telugu_1: {
                row: '.col-sm-5',
                validators: {
                    notEmpty: {
                        message: 'The telugu 1 is required'
                    }
                }
            },
            hindi_1: {
                validators: {
                    notEmpty: {
                        message: 'The hindi 1 is required'
                    }
                }
            },
            english_1: {
                validators: {
                    notEmpty: {
                        message: 'The english 1 is required'
                    }
                }
            },
            maths_1: {
                validators: {
                    notEmpty: {
                        message: 'The maths 1 is required'
                    }
                }
            },
            science_1: {
                validators: {
                    notEmpty: {
                        message: 'The science 1 is required'
                    }
                }
            },
            social_1: {
                validators: {
                    notEmpty: {
                        message: 'The social 1 is required'
                    }
                }
            },
            others: {
                validators: {
                    notEmpty: {
                        message: 'The Marks Obtained is required'
                    }
                }
            },
            examDate: {
                    validators: {
                        notEmpty: {
                            message: 'The Exam Date  is required'
                        },
                        date: {
                            format: 'DD/MM/YYYY',
                            min: '01/01/2010',
                            max: '30/03/2020',
                            message: 'The date is not a valid'
                        }
                    }
                }
        }
    });
    
});


    
