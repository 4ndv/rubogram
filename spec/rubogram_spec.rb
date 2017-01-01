require "spec_helper"

describe Rubogram do
  before do
    @client = Rubogram::Client.new ENV['TOKEN'], logging: false
  end

  it "has a version number" do
    expect(Rubogram::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end

  it "can getMe" do
    expect(@client.getMe.body["ok"]).to eq(true)
  end

  it "can get_me" do
    expect(@client.get_me.body["ok"]).to eq(true)
  end

  it "can call getMe" do
    expect(@client.call('getMe').body["ok"]).to eq(true)
  end

  it "can send_message" do
    expect(@client.send_message(chat_id: ENV['CHATID'], text: 'Hello from RSpec!').body["ok"]).to eq(true)
  end
end
