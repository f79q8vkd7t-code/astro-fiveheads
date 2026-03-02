export type Show = {
  date: string; // YYYY-MM-DD
  city: string;
  venue: string;
  country?: string;
  ticketUrl?: string;
  note?: string;
};

export const shows: Show[] = [
  {
    date: "2026-03-27",
    city: "Bad Tölz",
    venue: "Kesselhaus",
    country: "DE"
  }
];
