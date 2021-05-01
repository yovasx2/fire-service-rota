require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    @user = FactoryBot.create(:station_manager)
    assign(:users, [@user])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", text: @user.first_name.to_s, count: 1
    assert_select "tr>td", text: @user.last_name.to_s, count: 1
    assert_select "tr>td", text: @user.email.to_s, count: 1
    assert_select "tr>td", text: @user.skills.to_s, count: 1
    assert_select "tr>td", text: @user.role.to_s, count: 1
  end
end
