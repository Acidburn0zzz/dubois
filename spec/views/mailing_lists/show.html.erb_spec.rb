require 'spec_helper'

describe "mailing_lists/show" do
  before(:each) do
    @mailing_list = assign(:mailing_list, stub_model(MailingList,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
