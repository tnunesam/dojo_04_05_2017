Dado(/^que eu acesso o site da Orange HRM$/) do                                                                  
 	visit "https://enterprise-demo.orangehrmlive.com/"
end                                                                                                              
                                                                                                                 
Quando(/^eu entro com os dados de usuario Master e clico no botão Login$/) do                                                           
  	find('#txtUsername').set 'admin'
  	find('#txtPassword').set 'admin'
  	find('#btnLogin').click
end                                                                                                              
                                                                                                                 
Então(/^é exibida a tela inicial da aplicação e estou logado como usuario admin da aplicação$/) do               
	assert_text('Welcome Admin')                                   
end                                                                                                              
                                                                                                                 
E (/^clicar no botão Add$/) do
  	find('#btnAdd').click
end
                                                                                                                 
Quando(/^entrar com as informações do empregado a ser cadastrado$/) do
 	r = Random.new
 	@@nome = 'Teste' + r.rand(10...500).to_s
 	find('#firstName').set @@nome
 	find('#middleName').set 'nomedomeio'
 	find('#lastName').set 'ultimonome'
 	find('#lastName').set 'ultimonome'
 	find('#employeeId').set r.rand(2000...2500)
 	find('#chkLogin').click
 	find('#user_name').set 'teste'  + r.rand(10...500).to_s
 	find('#user_password').set 'teste1234'
 	find('#re_password').set 'teste1234'
 	find('#location').find(:xpath, 'option[5]').select_option

end                                                                                                              
                                                                                                                 
Quando(/^clicar no botão Save$/) do                                                                              
  	find('#btnSave').click                       
end                                                                                                              
                                                                                                                 
Então(/^deverá ser exibida pagina com os dados cadastrados$/) do                                                    
	page.should have_xpath('//*[@id="empPic"]')
	page.should have_xpath('//*[@id="personal_txtEmpFirstName"]')                        
end 

Quando(/^clicar na opção PIM$/) do
	find('#menu_pim_viewPimModule').click
end

Quando(/^clicar no funcionário na grid$/) do
	page.all(:xpath, "//a[contains(@href,'/index.php/pim/viewEmployee/empNumber')]")[1].click
end

Quando(/^clicar no botão Search$/) do
	find('#searchBtn').click
end

Quando(/^clicar no botão Edit$/) do
	find('#btnSave').click  
end

E(/^alterar as informações cadastrais desejadas$/) do
 	r = Random.new
 	@@license = r.rand(10000000...999999999).to_s
 	@@otherid = r.rand(20000...2000000).to_s
 	find('#personal_txtLicenNo').set @@license
 	find('#personal_optGender_1').click
	find('#personal_txtOtherID').set @@otherid 
end     

Então (/^deverá ser exibida pagina com os dados editados$/) do
	  expect( find("#personal_txtOtherID").value).to eq(@@otherid)
	  expect( find("#personal_txtLicenNo").value).to eq(@@license)
end