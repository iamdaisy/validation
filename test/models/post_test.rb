require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "post save" do #post가 잘 저장이 되는지 테스트하는 코드
    post = Post.new({
      title: '포스트 테스트',
      content: '잘되나?',
      user_id: 1
    })

    assert post.save, 'Failed to save' #post.save를 판단해서 참일경우 테스트통과 아닐경우 Failed to save 출력
  end


  test "post length validation" do
    post = Post.new({
      title: Faker::Lorem.paragraph(sentence_count=10),
      content: Faker::Lorem.paragraph(sentence_count=10),
      user_id: 1
    })

    assert post.save, 'validation success' #post.save를 판단해서 참일경우 테스트통과 아닐경우 Failed to save 출력
  end
end
