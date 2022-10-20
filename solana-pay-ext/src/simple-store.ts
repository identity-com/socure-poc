// Note, this is a super-simple in memory store.
import { PaymentSession } from "./types";


export const paymentSessionStore = new Map<string, PaymentSession>();

const SESSION_PURGE_INTERVAL = 1000 * 60 * 60; // 1 hour

export const purgeOldSessions = () => {
  const now = new Date();
  for (const [key, value] of paymentSessionStore.entries()) {
    if (now.getTime() - value.createdAt.getTime() > SESSION_PURGE_INTERVAL) {
      paymentSessionStore.delete(key);
    }
  }
}
