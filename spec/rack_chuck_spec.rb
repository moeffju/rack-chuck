require 'spec_helper'

describe Rack::Chuck do
  let(:dummy_app) { mock("application").tap {|o| o.stub!(:call) } }
  let(:rack_env) { {} }
  let(:response) { [418, { "Content-Type" => "text/plain" }, ['418 No coffee here.']]  }
  let(:chuck) { Rack::Chuck.new(dummy_app) }
  subject { chuck }

  its(:fact) { should be_an_instance_of(String) }

  context "calling" do
    before { dummy_app.should_receive(:call).with(rack_env).and_return(response) }

    it "should pass request through" do
      subject.call(rack_env)
    end

    context "response" do
      subject { chuck.call(rack_env)[1] }

      it { should have_key("X-Chuck-Norris") }
    end
  end
end
