#stolen from the hartl tutorial

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in the token_file to read later
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

Wwsmd::Application.config.secret_key_base = secure_token
