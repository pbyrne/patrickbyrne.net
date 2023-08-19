const EleventyVitePlugin = require("@11ty/eleventy-plugin-vite");

module.exports = function(eleventyConfig) {
  eleventyConfig.addPassthroughCopy("./source/images")
  eleventyConfig.addPassthroughCopy("./source/javascripts")
  eleventyConfig.addPassthroughCopy("./source/stylesheets")

  eleventyConfig.addPlugin(EleventyVitePlugin);

  return {
    dir: { input: "source", output: "_site" }
  }
}
