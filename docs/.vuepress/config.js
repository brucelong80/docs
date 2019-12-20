module.exports = {
  base: '/',
  title: 'blog-demo',
  description: 'Vuepress blog demo',
  themeConfig: {
	    repo: 'https://github.com/brucelong80/docs',
	    repoLabel: 'My GitHub',
	  	nav: [
	  		{ text: 'Home', link: '/' },
	  		{ text: 'FirstBlog', link: '/blog/FirstBlog.md' }
	  	]
	}
}