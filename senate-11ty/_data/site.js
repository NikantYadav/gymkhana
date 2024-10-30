module.exports = {
  meta: {
    title: "Students' Senate, IIT Kanpur",
    description: "Official Site of Students' Senate of IIT Kanpur",
    lang: "en",
    siteUrl: "https://students.iitk.ac.in/ss/", // Update site URL
  },
  feed: { // used in feed.xml.njk
    subtitle: "Lorem ipsum dolor sit amet consecuteor",
    filename: "atom.xml",
    path: "/ss/atom.xml", // Update path for feed
    id: "https://students.iitk.ac.in/ss/", // Update feed ID
    authorName: "John Doe",
    authorEmail: "johndoe@example.com"
  },
  hero: { // used in hero section of main page ie. index.html.njk
    title: "Students' Senate, IIT Kanpur",
    description: "The central representative, legislative, and supervisory body of the students at IIT Kanpur, fostering student governance and enhancing campus life."
  }
}

