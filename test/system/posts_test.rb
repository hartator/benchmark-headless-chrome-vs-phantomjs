require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  DEFAULT_SAMPLE_COUNT = 100

  test 'creating a new post' do
    sample_count = ENV.fetch('SAMPLE_COUNT', DEFAULT_SAMPLE_COUNT).to_i

    sample_count.times do
      visit posts_url

      assert page.has_content? 'Posts'

      click_on('New Post')

      fill_in('Title', with: 'Chrome is slow..')
      fill_in('Message', with: 'It is. Bring back PhantomJS.')

      click_on('Create Post')

      assert page.has_content? 'Post was successfully created.'
      assert page.has_content? 'Chrome is slow'

      print '.'
    end
  end
end
