import './App.css';
import axios from 'axios';
import Dishes from './components/dishes';
import { useState, useEffect } from 'react';

const API_URL = 'http://localhost:3001/api/v1/dishes';

function getAPIData() {
    return axios.get(API_URL)
    .then((response) => response.data);
}

function App() {
    const [dishes, setDishes] = useState([]);

    useEffect(() => {
        let mounted = true;
        getAPIData().then((items) => {
            if (mounted) {
                setDishes(items);
            }
        });
        return () => (mounted = false);
    }, []);

    return (
        <div className="App">
            <h1>Dishes</h1>
            <Dishes dishes={dishes} />
        </div>
    );
}

export default App;
