import EleventyVitePlugin from "@11ty/eleventy-plugin-vite";

export default async function(eleventyConfig) {
  eleventyConfig.addPassthroughCopy("./source/images")
  eleventyConfig.addPassthroughCopy("./source/javascripts")
  eleventyConfig.addPassthroughCopy("./source/stylesheets")

  eleventyConfig.addPlugin(EleventyVitePlugin);

  return {
    dir: { input: "source", output: "_site" }
  }
}
