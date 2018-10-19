var main_module = angular.module('mainModule', ['ui.router']);
//-------------------------------------------------------------------------------------
  main_module.config(function($stateProvider, $urlRouterProvider) {
    var states = [
      {
        name: 'log_in',
        url: '/',
        templateUrl: 'pages/log_in_page.htm',
        controller: 'mainController'
      },{
        name: 'admin_account',
        url: '/admin_account',
        templateUrl: 'pages/admin_account_page.htm',
        controller: 'adminController'
      },{
        name: 'admin_account.employee_view',
        url: '/employee_view',
        templateUrl: 'views/employee_view.htm',
        controller: 'adminController'
      },{
        name: 'admin_account.project_view',
        url: '/project_view',
        templateUrl: 'views/project_view.htm',
        controller: 'adminController'
      },{
        name: 'admin_account.material_view',
        url: '/material_view',
        templateUrl: 'views/material_view.htm',
        controller: 'adminController'
      },{
        name: 'admin_account.stage_view',
        url: '/stage_view',
        templateUrl: 'views/stage_view.htm',
        controller: 'adminController'
      },{
        name: 'admin_account.client_view',
        url: '/client_view',
        templateUrl: 'views/client_view.htm',
        controller: 'adminController'
      },
      {
        name: 'admin_account.purchase_view',
        url: '/purchase_view',
        templateUrl: 'onworking.htm',
        controller: 'adminController'
      },
      {
        name: 'admin_account.return_view',
        url: '/return_view',
        templateUrl: 'onworking.htm',
        controller: 'adminController'
      },
      {
        name: 'admin_account.report_view',
        url: '/report_view',
        templateUrl: 'onworking.htm',
        controller: 'adminController'
      }
    ];
    states.forEach((state) => $stateProvider.state(state));
    $urlRouterProvider.otherwise('/');
  });

  main_module.controller('mainController',function ($scope, $state){
    $scope.message = "Hello user, unfortunately we are in maintaining right now. Please come here later.";
    $scope.logintype = "administrador";
  
    $scope.goTo = function(page) {
      $state.go(page);
    };
  
    $scope.setLoginType = function(type) {
      $scope.logintype = type;
    };
  
    $scope.checkLogin = function(){
      var email = document.getElementById("email_input").value, pass = document.getElementById("password_input").value;
      if(email == "asolera" & pass == "admin123" & $scope.logintype == "administrador"){
        $scope.goTo('admin_account');
      }else{
        alert("Email or password incorrect. Please, try again.");
      }
    };
  });

  main_module.controller('adminController',function ($scope){

    $scope.serverAction = function(action,URL){
      $.ajax({ 
        type: action,
        dataType: "json",
        url: URL,
        success: function(data){        
          alert(data);
        }
     });
    };

    $scope.message = "Hello user, unfortunately we are in maintaining right now. Please come here later.";
    $scope.translate = {Fname:'Primer nombre', Sname: 'Segundo nombre', 
                        Lname:'Apellido', Code:'Codigo', 
                        Email:'Correo', Specialty:'Especialidad', 
                        Hourly_pay:'Pago por hora', Password_:'Contrasena', 
                        Phone:'Telefono', ID:'ID', IDRole:'Role ID',
                        Name_:'Nombre', IDClient:'ID de cliente', Location_:'Localizacion', 
                        Total_Price_:'Precio total', Start_Date_:'Fecha de inicio', End_Date:'Fecha de finalizacion',
                        Description_:'Descripcion', Date_:'Fecha', Amount:'Cantidad', Price:'Precio',
                        Quantity:'Cantidad', Price_aprox:'Precio aproximado'};

    $scope.employee_list = [{Fname:'John', Sname: 'Paul', Lname:'Jobs', Code:'1111', Email:'jjobs@teconstruye.com', Specialty:'Engineer', Hourly_pay:'1000', Password_:'SEXYRICOPAPU69', Phone:'88887888', ID:'1235', IDRole:'1'}]; 
    $scope.project_list = [{Name_:'Soda la frondoza', ID:'1237', IDClient:'1235', Location_:'En la leon 13', Total_Price_:'1020200'}]; 
    $scope.client_list = [{Fname:'Maruja', Sname:'Katiusca', Lname:'Monte', Email:'mmonte@teconstruye.com', Password_:'lamarucilla13', Phone:'98999888', ID:'1'}]; 
    $scope.material_list = [{Name_:'Lamina de zinc', Code:'1', Price:'4000'}];
    $scope.stage_list = [{Name_:'Poner techo', ID:'1', Description_:'Diay colocar el techo de la soda'}];
    $scope.role_list = [{Name_: 'Ingeniero', ID:'2'},{Name_: 'Administrador', ID:'1'},{Name_: 'Peon', ID:'3'}];
    $scope.project_stages_list = [];
    $scope.project_expense_list = [];
    $scope.material_per_stage_list = [];

    $scope.employee_template = {Fname:'', Sname: '', Lname:'', Code:'', Email:'', Specialty:'', Hourly_pay:'', Password_:'', Phone:'', ID:''};
    $scope.employee_pay_hours_template = {Date:'', Hours:''};
    $scope.project_template = {Name_:'', ID:'', IDClient:'', Location_:'', Total_Price_:''};
    $scope.project_expense_template = {ID:'', Location_:'', Description_:'', Date_:'', Amount:'', Price:''};
    $scope.project_stages_template = {Start_Date_:'', End_Date:''};
    $scope.client_template = {Fname:'', Sname:'', Lname:'', Email:'', Password_:'', Phone:'', ID:''};
    $scope.material_template = {Name_:'', Code:'', Price:''};
    $scope.stage_template = {Name_:'', ID:'', Description_:''};
    $scope.material_stage_template = {Quantity:'', Price_aprox:''};


    $scope.addEmployee= function(){
      //$scope.serverAction('GET','http://192.168.43.30:8080/api/employees');
      var input = $scope.employee_template;
      input['IDRole'] = document.getElementById("employee_role_select").value;
      alert("El empleado "+input["Fname"]+" fue agregado satisfactoriamente ");
      $scope.employee_list.push(input);
      $scope.employee_template = {Fname:'', Sname: '', Lname:'', Code:'', Email:'', Specialty:'', Hourly_pay:'', Password_:'', Phone:'', ID:''};
    }

    $scope.assignEmployeePayHours= function(){
      var input = $scope.employee_pay_hours_template;
      input['IDProject'] = document.getElementById("assign_hours_project_select").value;
      input['IDEmployee'] = document.getElementById("assign_hours_employee_select").value;
      alert("Las horas trabajadas por el empleado "+input["IDEmployee"]+" fueron asignadas satisfactoriamente.");
      $scope.employee_pay_hours_template = {Date:'', Hours:''};
    }

    $scope.addProject= function(){
      var input = $scope.project_template;
      alert("El proyecto "+input["Name_"]+" fue agregado satisfactoriamente.");
      $scope.project_list.push(input);
      $scope.project_template = {Name_:'', ID:'', IDClient:'', Location_:'', Total_Price_:''};
    }
    $scope.assignStageToProject= function(){
      var input = $scope.project_stages_template;
      input['IDProject'] = document.getElementById("assign_project_select").value;
      input['IDStage'] = document.getElementById("assign_stage_select").value;
      alert("La etapa "+input["IDStage"]+" fue asignada al proyecto "+input["IDProject"]+" satisfactoriamente.");
      $scope.project_stages_list.push(input);
      $scope.project_stages_template = {Start_Date_:'', End_Date:''};
    }
    $scope.assignProjectExpense= function(){
      var input = $scope.project_expense_template;
      input['IDProject'] = JSON.parse(document.getElementById("assign_purchase_select").value)['IDProject'];
      input['IDStage'] = JSON.parse(document.getElementById("assign_purchase_select").value)['IDStage'];
      alert("La compra al proyecto "+input["IDProject"]+" con numero de factura "+input["ID"]+" fue agregado a la etapa "+input["IDStage"]+" satisfactoriamente.");
      $scope.project_expense_list.push(input);
      $scope.project_expense_template = {ID:'', Location_:'', Description_:'', Date_:'', Amount:'', Price:''};
    }

    $scope.addClient= function(){
      var input = $scope.client_template;
      alert("El cliente "+input["Fname"]+" fue agregado satisfactoriamente.");
      $scope.client_list.push(input);
      $scope.client_template = {Fname:'', Sname:'', Lname:'', Email:'', Password_:'', Phone:'', ID:''};
    }

    $scope.addMaterial= function(){
      var input = $scope.material_template;
      alert("El material "+input["Name_"]+" fue agregado satisfactoriamente a la etapa "+".");
      $scope.material_list.push(input);
      $scope.material_template = {Name_:'', Code:'', Price:''};
    }

    $scope.addStage= function(){
      var input = $scope.stage_template;
      alert("La etapa "+input["Name_"]+" fue agregado satisfactoriamente al proyecto "+".");
      $scope.stage_list.push(input);
      $scope.stage_template = {Name_:'', ID:'', Description_:''};
    }

    $scope.addStage= function(){
      var input = $scope.stage_template;
      alert("La etapa "+input["Name_"]+" fue agregado satisfactoriamente al proyecto "+".");
      $scope.stage_list.push(input);
      $scope.stage_template = {Name_:'', ID:'', Description_:''};
    }
    $scope.assignMaterialToStage= function(){
      var input = $scope.project_stages_template;
      input['IDStage'] = document.getElementById("to_assign_stage_select").value;
      input['CodeMaterial'] = document.getElementById("to_assign_material_select").value;
      alert("El material "+input["CodeMaterial"]+" fue asignado a la etapa "+input["IDStage"]+" satisfactoriamente.");
      $scope.material_per_stage_list.push(input);
      $scope.material_stage_template = {Quantity:'', Price_aprox:''};
    }

    $scope.go= function(page) {
      $state.go(page);
    };
  });
  //-------------------------------------------------------------------------------------
  /** 
  var admin_module = angular.module("adminModule",["ngRoute"]);
  
  admin_module.config(function ($routeProvider){
    $routeProvider.when("/",{
      templateUrl: "employee_page.htm",
      controller: "adminController"
    }).when("/employee",{
      templateUrl: "employee_page.htm",
      controller: "adminController"
    }).otherwise({
      templateUrl: "employee_page.htm"
    });
  });
  
  admin_module.controller('adminController',function ($scope, $location){
    $scope.users = [
      {name:'John', age:25, gender:'boy'},
      {name:'Jessie', age:30, gender:'girl'},
      {name:'Johanna', age:28, gender:'girl'},
      {name:'Joy', age:15, gender:'girl'},
      {name:'Mary', age:28, gender:'girl'},
      {name:'Peter', age:95, gender:'boy'},
      {name:'Sebastian', age:50, gender:'boy'},
      {name:'Erika', age:27, gender:'girl'},
      {name:'Patrick', age:40, gender:'boy'},
      {name:'Samantha', age:60, gender:'girl'}
    ];
  
    $scope.goTo = function(page) {
      $location.path(page);
    };
  });
  */
