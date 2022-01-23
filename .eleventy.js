module.exports = function(eleventyConfig) {
  eleventyConfig.addPassthroughCopy("./source/images")
  eleventyConfig.addPassthroughCopy("./source/javascripts")
  eleventyConfig.addPassthroughCopy("./source/stylesheets")

  return {
    dir: { input: "source", output: "_site" }
  }
}
