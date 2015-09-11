require 'test_helper'

class HmmProfileTest < ActiveSupport::TestCase
  def setup
    @hmm_profile = HmmProfile.new(
      name: 'NrdAb', rank: 'subclass', desc: 'Something',
      hmm_profile_id: HmmProfile.
    )
  end

  test 'should be valid' do
    assert @hmm_profile.valid?
  end

  test 'name should be present' do
    @hmm_profile.name = '   '
    assert_not @hmm_profile.valid?
  end

  test 'name should not be too long' do
    @hmm_profile.name = 'a' * 17
    assert_not @hmm_profile.valid?
  end

  test 'should be a child of NrdA' do
  end
end
