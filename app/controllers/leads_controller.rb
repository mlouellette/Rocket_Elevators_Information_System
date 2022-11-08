class LeadsController < ApplicationController
    require 'sendgrid-ruby'
    include SendGrid

    require 'date'
    def create
        leads = Lead.new

        leads.contactName = params[:contactName]
        leads.contactEmail = params[:contactEmail]
        leads.contactPhone = params[:contactPhone]
        leads.contactBuisnessName = params[:contactBuisnessName]
        leads.contactDepartement = params[:contactDepartement]
        leads.projectName = params[:contactProject]
        leads.message = params[:contactMessage]
        leads.contactAttachment = params[:contactAttachment]

        current_time = DateTime.now

        leads.contactDate = current_time.strftime "%d/%m/%Y"

        
        flash[:success] = "Request successfully sent!"
        
        message = 'Greetings ' + leads.contactName + ",\n\n" +
        'We thank you for contacting Rocket Elevators to discuss the opportunity to contribute to your project ' +  leads.projectName + " \n\n" +
        'A representative from our team will be in touch with you very soon. We look forward to demonstrating the value of our solutions and helping you choose the appropriate product given your requirements.' + " \n\n" +

        'We’ll Talk soon,' + " \n" +
        'The Rocket Team' + " \n"

        from = Email.new(email: 'mlouellette31@gmail.com')
        to = Email.new(email: leads.contactEmail)
        subject = 'Thanks for contacting The Rocket Team!'
        content = Content.new(type: 'text/plain', value: message)
        

        mail = Mail.new(from, subject, to, content, image)
        
        sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
        response = sg.client.mail._('send').post(request_body: mail.to_json)
        puts response.status_code
        puts response.body
        puts response.headers


    end


end
