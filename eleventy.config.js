import EleventyVitePlugin from "@11ty/eleventy-plugin-vite";
import UpgradeHelper from "@11ty/eleventy-upgrade-help";

export default async function(eleventyConfig) {
  eleventyConfig.addPassthroughCopy("./source/images")
  eleventyConfig.addPassthroughCopy("./source/javascripts")
  eleventyConfig.addPassthroughCopy("./source/stylesheets")

  eleventyConfig.addPlugin(EleventyVitePlugin);
  eleventyConfig.addPlugin(UpgradeHelper);

  return {
    dir: { input: "source", output: "_site" }
  }
}
