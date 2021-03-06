describe "The Document", ->
  document = briefcase.epics.first().document

  it "knows the type", ->
    document.getType().should.equal('epic')

  it "can reference the briefcase it belongs to", ->
    document.getBriefcase().should.have.property 'root'

  it "Loads content from the path", ->
    length = document.content.length
    length.should.be.above(10)

  it "has a relative path", ->
    document.relative_path.should.equal('docs/epics/model-definition-dsl.md')

  it "extracts data from the frontmatter", ->
    document.data.title.should.equal('Model Definition DSL')
    document.data.should.have.property('type')
    document.data.should.have.property('title')

  it "renders the document in HTML", ->
    document.html.length.should.be.above(10)

  it "wraps the document in a main tag", ->
    document.html.should.match(/\<main/)
    document.html.should.match(/brief-document/)

  it "stores a reference to the markdown ast", ->
    document.should.have.property('ast')
    document.ast.should.have.property('type')
    document.ast.should.have.property('children')

  it "has an css selecting interface", ->
    document.$('h1').length.should.equal(1)
    document.$('h2').length.should.equal(1)
    document.$('h3').length.should.equal(3)

  it "wraps elements in sections and articles", ->
    document.$('main').length.should.equal(1)
    document.$('section').length.should.equal(2)
    document.$('article').length.should.equal(3)

  it "lets me query the document using css and underscore", ->
    headings = document.elements('section article h3').invoke('text')
    headings.should.containEql('A User can describe the metadata schema')
    headings.should.containEql('A User can define attributes using CSS selectors')

