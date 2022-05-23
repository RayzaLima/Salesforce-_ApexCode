trigger HelloWordTrigger on Account (before insert) {
    System.debug('Hello Word!');
}