using Microsoft.VisualStudio.TestTools.UnitTesting;
using ClassLibrary;

namespace UnitTestProject
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestMethod1()
        {
            Assert.AreEqual(1, Class1.One);
        }
    }
}
