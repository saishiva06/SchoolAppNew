$(document).ready(function() {
	
	$('#TeacherDOB')
    .datepicker({
        format: 'dd/mm/yyyy',
        autoclose:true
    })
    .on('changeDate', function(e) {
        // Revalidate the date field
        $('#addTeacher').formValidation('revalidateField', 'dob');
        
    });
 
 $('#TeacherDOJ')
    .datepicker({
        format: 'dd/mm/yyyy',
        autoclose:true
    })
    .on('changeDate', function(e) {
        // Revalidate the date field
        $('#addTeacher').formValidation('revalidateField', 'doj');
        
    });
 
 $('#StudentDOB')
 .datepicker({
     format: 'dd/mm/yyyy',
     autoclose:true
 })
 .on('changeDate', function(e) {
     // Revalidate the date field
     $('#addStudent').formValidation('revalidateField', 'studentDob');
     
 });

$('#StudentDOJ')
 .datepicker({
     format: 'dd/mm/yyyy',
     autoclose:true
 })
 .on('changeDate', function(e) {
     // Revalidate the date field
     $('#addStudent').formValidation('revalidateField', 'studentDoj');
     
 });
	
$('#FeePaidDatePicker')
.datepicker({
    format: 'dd/mm/yyyy',
    autoclose:true
})
.on('changeDate', function(e) {
    // Revalidate the date field
    $('#addFee').formValidation('revalidateField', 'feepaidDate');
    
});

$('#ExamDatePicker')
.datepicker({
    format: 'dd/mm/yyyy',
    autoclose:true
})
.on('changeDate', function(e) {
    // Revalidate the date field
    $('#addResult').formValidation('revalidateField', 'examDate');
    
});

$('#ExpenseDatePicker')
.datepicker({
    format: 'dd/mm/yyyy',
    autoclose:true
})
.on('changeDate', function(e) {
    // Revalidate the date field
    $('#addExpense').formValidation('revalidateField', 'expenseDate');
    
});

$('#LimitDatePicker')
.datepicker({
    format: 'dd/mm/yyyy',
    autoclose:true
})
.on('changeDate', function(e) {
    // Revalidate the date field
    $('#"updateAvailableLimit"').formValidation('revalidateField', 'expenseDate');
    
});

$('#SchoolFundsDatePicker')
.datepicker({
    format: 'dd/mm/yyyy',
    autoclose:true
})
.on('changeDate', function(e) {
    // Revalidate the date field
    $('#updateSchoolFunds').formValidation('revalidateField', 'expenseDate');
    
});

$('#LoanDatePicker')
.datepicker({
    format: 'dd/mm/yyyy',
    autoclose:true
})
.on('changeDate', function(e) {
    // Revalidate the date field
    $('#updateLoanAmount').formValidation('revalidateField', 'expenseDate');
    
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
            subCaste: {
                validators: {
                    notEmpty: {
                        message: 'The sub caste is required'
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
            mole: {
                validators: {
                    notEmpty: {
                        message: 'please enter atleast one mole'
                    }
                }
            },
        
            studentDob: {
                selector: '.sDob',
                   validators: {
                       notEmpty: {
                           message: 'The  Date Of Birth  is required'
                       },
                       date: {
                           format: 'DD/MM/YYYY',
                           message: 'The date is not a valid'
                       }
                   }
               },
        studentDoj: {
            selector: '.sDoj',
               validators: {
                   notEmpty: {
                       message: 'The  Date Of Joing  is required'
                   },
                   date: {
                       format: 'DD/MM/YYYY',
                       message: 'The date is not a valid'
                   }
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
                selector: '.tDob',
                   validators: {
                       notEmpty: {
                           message: 'The  Date Of Birth  is required'
                       },
                       date: {
                           format: 'DD/MM/YYYY',
                           message: 'The date is not a valid'
                       }
                   }
               },
               doj: {
            selector: '.tDoj',
               validators: {
                   notEmpty: {
                       message: 'The  Date Of Joing  is required'
                   },
                   date: {
                       format: 'DD/MM/YYYY',
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
            },
            
            feepaidDate: {
                selector: '.fDop',
                   validators: {
                       notEmpty: {
                           message: 'The  Date Of Fee paid  is required'
                       },
                       date: {
                           format: 'DD/MM/YYYY',
                           message: 'The date is not a valid'
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
                selector: '.EDoe',
                   validators: {
                       notEmpty: {
                           message: 'The  Date Of Exam is required'
                       },
                       date: {
                           format: 'DD/MM/YYYY',
                           message: 'The date is not a valid'
                       }
                   }
               }
        
        }
    });
    
    $('#addExpense').formValidation({
        message: 'This value is not valid',
        icon: {
           // valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	expenseName: {
                row: '.col-sm-5',
                validators: {
                    notEmpty: {
                        message: 'The Expense name is required'
                    }
                }
            },
            expenseBy: {
                row: '.col-sm-5',
                validators: {
                    notEmpty: {
                        message: 'The Expense By is required'
                    }
                }
            },
            expenseCost: {
                row: '.col-sm-5',
                validators: {
                    notEmpty: {
                        message: 'The Expense Cost is required'
                    }
                }
            },
            
            expenseDate: {
                selector: '.eDoe',
                   validators: {
                       notEmpty: {
                           message: 'The  Date Of Expense  is required'
                       },
                       date: {
                           format: 'DD/MM/YYYY',
                           message: 'The date is not a valid'
                       }
                   }
               }     
        }
    });
    
    $('#updateLoanAmount').formValidation({
        message: 'This value is not valid',
        icon: {
           // valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	 expenseBy: {
                row: '.col-sm-5',
                validators: {
                    notEmpty: {
                        message: 'The Amount By is required'
                    }
                }
            },
            expenseCost: {
                row: '.col-sm-5',
                validators: {
                    notEmpty: {
                        message: 'The Amount is required'
                    }
                }
            },
            
            expenseDate: {
                selector: '.eDol',
                   validators: {
                       notEmpty: {
                           message: 'The  Date Of Expense  is required'
                       },
                       date: {
                           format: 'DD/MM/YYYY',
                           message: 'The date is not a valid'
                       }
                   }
               }     
        }
    });
    
    $('#updateSchoolFunds').formValidation({
        message: 'This value is not valid',
        icon: {
           // valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	 expenseBy: {
                row: '.col-sm-5',
                validators: {
                    notEmpty: {
                        message: 'The Amount By is required'
                    }
                }
            },
            expenseCost: {
                row: '.col-sm-5',
                validators: {
                    notEmpty: {
                        message: 'The Amount is required'
                    }
                }
            },
            
            expenseDate: {
                selector: '.eDos',
                   validators: {
                       notEmpty: {
                           message: 'The  Date Of Expense  is required'
                       },
                       date: {
                           format: 'DD/MM/YYYY',
                           message: 'The date is not a valid'
                       }
                   }
               }     
        }
    });
    
    $('#updateAvailableLimit').formValidation({
        message: 'This value is not valid',
        icon: {
           // valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	 expenseBy: {
                row: '.col-sm-5',
                validators: {
                    notEmpty: {
                        message: 'The Amount By is required'
                    }
                }
            },
            expenseCost: {
                row: '.col-sm-5',
                validators: {
                    notEmpty: {
                        message: 'The Amount is required'
                    }
                }
            },
            
            expenseDate: {
                selector: '.eDoa',
                   validators: {
                       notEmpty: {
                           message: 'The  Date Of Expense  is required'
                       },
                       date: {
                           format: 'DD/MM/YYYY',
                           message: 'The date is not a valid'
                       }
                   }
               }     
        }
    });
});


    
