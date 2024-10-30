const { DateTime } = require('luxon');
const navigationPlugin = require('@11ty/eleventy-navigation');
const rssPlugin = require('@11ty/eleventy-plugin-rss');

module.exports = (config) => {
  // Plugins
  config.addPlugin(navigationPlugin);
  config.addPlugin(rssPlugin);

  // Passthrough copies
  config.addPassthroughCopy('css');
  config.addPassthroughCopy('static');

  // Enable deep merging of data files
  config.setDataDeepMerge(true);

  // Filters
  config.addFilter('htmlDateString', (dateObj) => {
    return DateTime.fromJSDate(dateObj, { zone: 'utc' }).toFormat('yyyy-LL-dd');
  });

  config.addFilter('readableDate', (dateObj) => {
    return DateTime.fromJSDate(dateObj, { zone: 'utc' }).toFormat('dd LLL, yyyy');
  });

  // Custom collection for tags
  config.addCollection('tagList', (collection) => {
    const tagsObject = {};
    collection.getAll().forEach((item) => {
      if (!item.data.tags) return;
      item.data.tags
        .filter((tag) => !['post', 'all'].includes(tag))
        .forEach((tag) => {
          if (typeof tagsObject[tag] === 'undefined') {
            tagsObject[tag] = 1;
          } else {
            tagsObject[tag] += 1;
          }
        });
    });

    const tagList = [];
    Object.keys(tagsObject).forEach((tag) => {
      tagList.push({ tagName: tag, tagCount: tagsObject[tag] });
    });
    return tagList.sort((a, b) => b.tagCount - a.tagCount);
  });

  // Path prefix for subdirectory deployment
  return {
    pathPrefix: "/ss/",
    dir: {
      input: ".",      // Root directory as input
      output: "_site", // Output directory
    },
  };
};

