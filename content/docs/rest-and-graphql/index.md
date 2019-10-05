---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "REST and Graphql"
linktitle: "REST and Graphql"
summary:
date: 2019-10-04T18:36:43-04:00
lastmod: 2019-10-04T18:36:43-04:00
draft: false  # Is this a draft? true/false
toc: true  # Show table of contents? true/false
type: docs  # Do not modify.

# Add menu entry to sidebar.
# - Substitute `example` with the name of your course/documentation folder.
# - name: Declare this menu item as a parent with ID `name`.
# - parent: Reference a parent ID if this page is a child.
# - weight: Position of link in menu.
menu:
  docs:
    name: "REST and GraphQL APIs"
    #name: YourParentID
    # parent: YourParentID
    weight: 10
---

# GraphQL

## Introspection queries

- Get all possible root-level queries:

<pre><code>query {
  __schema {
    queryType {
      fields {
        name
      }
    }
  }
}
</code>
</pre>
