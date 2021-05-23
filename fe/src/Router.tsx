import React from 'react';
import { BrowserRouter, Switch, Route } from 'react-router-dom';
import Accomodation from './components/accomodation/Accomodation';
import Home from './components/home/Home';

const Router: React.FC = () => (
    <BrowserRouter>
        <Switch>
            <Route exact path="/" component={Home} />
            <Route path="/accomodation" component={Accomodation} />
        </Switch>
    </BrowserRouter>
);

export default Router;
