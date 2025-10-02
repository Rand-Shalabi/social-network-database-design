
### Date created
October 2, 2025

### Project Title
**Social Network Database Design**

### Description
A relational database design for a _social networking platform_, that contains the following entities:
- **Users**: each user has a unique identifying `user_login`, a password and other information stored in the database such as their name, a brief description and the date they joined.
- **Links**: users have links to their profiles, each link is distinguished by a unique `linkNo`.
- **Friends**: users can form friendships with multiple other users, the table uses a composite primary key `user_login, friend` to manage these friendships.
- **Entries**: a user can create several entries (Blurbs, Comments), each entry identified by a unique `entryId`.
- **Blurbs**: main posts that essentially include some text.
- **Comments**: related to other entries (a blurb or another comment) forming the comment’s parent, and the comment’s root is the blurb that started the thread.
- **Images**: Entries can have multiple images, the table uses a composite primary key `entry, caption` allowing each entry to have more than one image, and for the same image to be used in other entries.

**Key Features:**
- Normalized schema with proper relationships.
- Complex SQL queries for social interactions.
- Cascade delete handling for referential integrity.
- Recursive comment threading with parent/root tracking.

