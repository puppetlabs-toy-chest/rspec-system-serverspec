require 'spec_helper_system'

describe "basic tests:" do
  describe file('/tmp/setupblock'), :node => node do
    it { should be_file }
    it { should contain 'foobar' }
  end

  describe user('root') do
    it { should exist }
    it { should have_uid 0 }
  end
end
