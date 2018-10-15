var main_module = angular.module('mainModule', ['ui.router']);
//-------------------------------------------------------------------------------------
  main_module.config(function($stateProvider, $urlRouterProvider) {
    var states = [
      {
        name: 'home',
        url: '/',
        templateUrl: 'home.htm',
        controller: 'mainController'
      },{
        name: 'admin_account',
        url: '/admin_account',
        templateUrl: 'admin_account.htm',
        controller: 'adminController'
      },{
        name: 'admin_account.employee_view',
        url: '/employee_view',
        templateUrl: 'employee_page.htm',
        controller: 'adminController'
      },{
        name: 'admin_account.project_view',
        url: '/project_view',
        templateUrl: 'onworking.htm',
        controller: 'adminController'
      },{
        name: 'admin_account.client_view',
        url: '/client_view',
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
    $scope.message = "Hello user, unfortunately we are in maintaining right now. Please come here later.";
    $scope.attributes = ['Nombre','Apellido','Codigo','Correo','Especialidad','Pago por hora','Telefono','ID'];
    //Just depuration
    $scope.users = [{FName:'John', LName:'Smith', Code:'1234', Email:'jsmith@teconstruye.com', Specialty:'Chapeador', Hourly_pay:'1000', Phone:'88888888',ID:'CHAPI123'}];
    //
    $scope.input = {FName:'', LName:'', Code:'', Email:'', Specialty:'', Hourly_pay:'', Phone:'',ID:''};

    $scope.add= function(){
      var temp_input = $scope.input;
      $scope.users.push(temp_input);
      $scope.input = {FName:'', LName:'', Code:'', Email:'', Specialty:'', Hourly_pay:'', Phone:'',ID:''};
    }

    $scope.go = function(page) {
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
