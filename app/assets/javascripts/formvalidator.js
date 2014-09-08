$(document).ready(function() {
    $('#multipleForm').bootstrapValidator({
        message: 'Formularz nie został poprawnie wypełniony',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        submitHandler: null,
        submitButtons: 'input[type="submit"]',
        fields: {
            nazwisko: {
                trigger: 'blur',
                validators: {
                    notEmpty: {
                        message: 'Podaj swoje imię i nazwisko.'
                    }
                }
            },
            mail: {
                trigger: 'blur',
                validators: {
                    notEmpty: {
                        message: 'Podaj swój adres email.'
                    },
                    emailAddress: {
                        message: 'Niepoprawny email.'
                    }
                }
            },
            wedding_date: {
                trigger: 'blur',
                validators: {
                    notEmpty: {
                        message: 'Podaj planowaną datę ślubu.'
                    },
                    date: {
                        format: 'RRRR-MM-DD',
                        message: 'Niepoprawna składnia daty. (RRRR-MM-DD)'
                    }
                }
            },
            phone: {
                trigger: 'blur',
                validators: {
                    notEmpty: {
                        message: 'Podaj swój numer kontaktowy.'
                    },
                    digits: {
                        message: 'Nieprawidłowo wprowadzony numer.'
                    }
                }
            },
            guests: {
                trigger: 'blur',
                validators: {
                    notEmpty: {
                        message: 'Podaj przybliżoną liczbę gości.'
                    },
                    digits: {
                        message: 'Podana wartość nie jest liczbą.'
                    }
                }
            },
            order: {
                trigger: 'blur',
                validators: {
                    notEmpty: {
                        message: 'Podaj przybliżoną liczbę zaproszeń.'
                    },
                    digits: {
                        message: 'Podana wartość nie jest liczbą.'
                    },
                    greaterThan: {
                        message: 'Minimalna ilość to 40 sztuk.',
                        value: 40,
                        incluseive: 'true'
                    }
                }
            },
            option: {
                trigger: 'blur',
                validators: {
                    notEmpty: {
                        message: 'Musisz wybrać jedną opcję.'
                    }
                }
            }
        }
    });
});
