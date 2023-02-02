module Login  
  include HTTParty
  base_uri 'http://localhost:3000'
  format :json
  headers Accept: 'application/vnd.taskmanagersss.v2',
          'Content-type': 'application/json'
end