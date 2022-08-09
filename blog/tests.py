from django.test import TestCase
from django.contrib.auth.models import User
from blog.models import Post, Category

class TestCreatePost(TestCase):
    @classmethod
    def setUpTestData(cls):
        test_category = Category.objects.create(name='Flask')
        test_user = User.objects.create_user(
            username='test_user', password='1234')
        test_post = Post.objects.create(category_id=1, title='Post Title', excerpt='excerpt', content='posted content', slug='post-title', author_id=1, status='published')

    def test_blog_content(self):
        post = Post.postobjects.get(id=1)
        cat = Category.objects.get(id=1)
        author = f'{post.author}'
        excerpt = f'{post.excerpt}'
        title = f'{post.title}'
        content = f'{post.content}'
        status = f'{post.status}'
        self.assertEqual(author, 'test_user')
        self.assertEqual(title, 'Post Title')
        self.assertEqual(excerpt, 'excerpt')
        self.assertEqual(content, 'posted content')
        self.assertEqual(status, 'published')
        self.assertEqual(str(post), 'Post Title')
        self.assertEqual(str(cat), 'Flask')
