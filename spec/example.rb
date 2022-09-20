# frozen_string_literal: true

Box = Struct.new(:value)

RSpec.shared_examples 'when overriding value' do
  let(:value) { 1 }
end

RSpec.describe 'RSpec/LetBeforeExamples' do
  include_examples 'when overriding value'

  let(:value) { 2 }

  it { expect(value).to eq(2) }
end
