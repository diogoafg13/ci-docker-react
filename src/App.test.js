import { render, screen } from '@testing-library/react';
import App from './App';

test('renders learn react link', () => {
  render(<App />);
  const linkElement = screen.getByText("I was changed one the Feature Branch");
  expect(linkElement).toBeInTheDocument();
});


test('renders learn react link 2', () => {
  render(<App />);
  const linkElement = screen.getByText("I was changed one the Feature Branch");
  expect(linkElement).toBeInTheDocument();
});