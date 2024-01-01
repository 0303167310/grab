import React from 'react';
import { NavLink } from 'react-router-dom';
function Task({ title, to }){
    return (
        <NavLink to={to}>
            <span>{title}</span>
        </NavLink>
    )
}

function Sidebar() {
    return (
        <nav>
            <Task title="Quan ly thong tin chuyen di" to="/ride" />
            <Task title="Quan ly tai xe" to="/driver" />
            <Task title="Quan ly nguoi dung" to="/customer" />
        </nav>
    );
}
export default Sidebar;