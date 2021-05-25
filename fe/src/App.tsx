import './App.css';
import React from 'react';
import Router from './Router';
import { ThemeProvider } from 'styled-components';
import { theme } from './styles/theme';

function App(): React.ReactElement {
    return (
        <ThemeProvider theme={theme}>
            <Router />
        </ThemeProvider>
    );
}

export default App;
