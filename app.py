import streamlit as st
from sqlalchemy import text

list_doctor = ['', 'dr. Nurita', 'dr. Yogi', 'dr. Wibowo', 'dr. Ulama', 'dr. Ping']
list_symptom = ['', 'male', 'female']

conn = st.connection("postgresql", type="sql", 
                     url="postgresql://siahaan.timotius:4qPpreMs5RZG@ep-yellow-sun-86881706.ap-southeast-1.aws.neon.tech/werr")
with conn.session as session:
    query = text('CREATE TABLE IF NOT EXISTS BOOKS (id serial, title varchar, author varchar, genre varchar, \
                                                     language varchar, total_copies int, available_copies int);')
    session.execute(query)

st.header('LIBRARY MANAGEMENT SYSTEM')
page = st.sidebar.selectbox("Select Menu", ["View Books", "Add Book"])

if page == "View Books":
    data = conn.query('SELECT * FROM books ORDER BY id;', ttl="0").set_index('id')
    st.dataframe(data)

if page == "Add Book":
    if st.button('Add New Book'):
        with conn.session as session:
            query = text('INSERT INTO books (title, author, genre, language, total_copies, available_copies) \
                          VALUES (:1, :2, :3, :4, :5, :6);')
            session.execute(query, {'1':'', '2':'', '3':'', '4':'', '5':0, '6':0})
            session.commit()

    data = conn.query('SELECT * FROM books ORDER BY id;', ttl="0")
    for _, result in data.iterrows():        
        id = result['id']
        title_lama = result["title"]
        author_lama = result["author"]
        genre_lama = result["genre"]
        language_lama = result["language"]
        total_copies_lama = result["total_copies"]
        available_copies_lama = result["available_copies"]

        with st.expander(f'{title_lama}'):
            with st.form(f'book-{id}'):
                title_baru = st.text_input("Title", title_lama)
                author_baru = st.selectbox("Author", list_authors, list_authors.index(author_lama))
                genre_baru = st.selectbox("Genre", list_genres, list_genres.index(genre_lama))
                language_baru = st.selectbox("Language", list_languages, list_languages.index(language_lama))
                total_copies_baru = st.number_input("Total Copies", total_copies_lama)
                available_copies_baru = st.number_input("Available Copies", available_copies_lama)
                
                if st.form_submit_button('Update Book'):
                    with conn.session as session:
                        query = text('UPDATE books SET title=:1, author=:2, genre=:3, language=:4, \
                                      total_copies=:5, available_copies=:6 WHERE id=:7;')
                        session.execute(query, {'1':title_baru, '2':author_baru, '3':genre_baru, '4':language_baru, 
                                                '5':total_copies_baru, '6':available_copies_baru, '7':id})
                        session.commit()
                        st.experimental_rerun()