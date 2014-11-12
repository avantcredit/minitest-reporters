require_relative "../test_helper"

module MiniTestReportersTest
  class GoodTest < TestCase
    def test_a
      assert_equal 1, 1
      assert 1
    end

    def test_b
      assert_equal 2, 2
    end

    describe 'top describe block' do
      it 'succeeds' do
        assert true
      end
      describe 'nested describe block' do
        it 'also succeeds' do
          assert_equal 3, 3
        end
      end
    end
  end
end
