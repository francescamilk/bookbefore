import React from 'react';

function Dishes(props) {
    return (
        <div>
            {props.dishes.map((dish) => {
                return <div key={dish.id}>
                    <h2>{dish.name}</h2>
                    <p>{dish.tagline}</p>
                </div>
            })}
        </div>
    );
}

export default Dishes;
