require 'spec_helper'

describe 'postfix::alias' do
  let(:title) {'alias_test'}
  let(:params) {{ :values => 'test test' }}

  it do
    should contain_concat_fragment("postfix+#{title}.alias").with({
      'content' => "#{title}: #{params[:values]}\n"
    })
  end
end
